const { Etcd3 } = require('etcd3');

// 创建一个 etcd 客户端实例，连接到指定的端点
const client = new Etcd3({
  hosts: ['127.0.0.1:2379', '127.0.0.1:2381', '127.0.0.1:2383']
});

async function main() {
  try {
    // 写入一个键值对
    await client.put('mykey').value('Hello, etcd from JavaScript!');
    console.log('键值对写入成功');

    // 读取键值对
    const value = await client.get('mykey').string();
    console.log(`键 mykey 的值是: ${value}`);

    // 关闭客户端连接
    client.close();
  } catch (error) {
    console.error('操作 etcd 时出现错误:', error);
  }
}

main();    