
rule m3f7_52b94013004b4993
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3f7.52b94013004b4993"
     cluster="m3f7.52b94013004b4993"
     cluster_size="5"
     filetype = "application/octet-stream"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171122"
     license = "RIL-1.0 [Rick's Internet License] "
     family="ramnit html script"
     md5_hashes="['6ce7ba81355a14466cc149b2a9423533','7fc3dcea71273af22ccbb663bf479185','dd78b4361802a6ac09c47aa2195d9e99']"

   strings:
      $hex_string = { de8f4eb79f59c3a47ceb604ddfc9055f6b878d22672c3fe3560e2f16413c5e75f45b3f63b676b56886780399a3088476d6968e92888d0d1e7925a16919e8e066 }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
