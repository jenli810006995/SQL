select concat(md5, repeat('1', length(sha256) - length(md5))) as md5, 
       concat(repeat('0', length(sha256) - length(sha1)), sha1) as sha1,
       sha256
       from encryption;
