.class public final Lcom/google/android/gms/org/conscrypt/NativeCrypto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_PROTOCOLS:[Ljava/lang/String;

.field static final DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

.field static final DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

.field public static final EC_CURVE_GF2M:I = 0x2

.field public static final EC_CURVE_GFP:I = 0x1

.field public static final EVP_PKEY_CMAC:I = 0x37e

.field public static final EVP_PKEY_DH:I = 0x1c

.field public static final EVP_PKEY_DSA:I = 0x74

.field public static final EVP_PKEY_EC:I = 0x198

.field public static final EVP_PKEY_HMAC:I = 0x357

.field public static final EVP_PKEY_RSA:I = 0x6

.field public static final EXFLAG_CA:I = 0x10

.field public static final EXFLAG_CRITICAL:I = 0x200

.field public static final EXTENSION_TYPE_CRITICAL:I = 0x1

.field public static final EXTENSION_TYPE_NON_CRITICAL:I = 0x0

.field public static final GN_STACK_ISSUER_ALT_NAME:I = 0x2

.field public static final GN_STACK_SUBJECT_ALT_NAME:I = 0x1

.field public static final OPENSSL_EC_NAMED_CURVE:I = 0x1

.field public static final OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

.field public static final PKCS7_CERTS:I = 0x1

.field public static final PKCS7_CRLS:I = 0x2

.field public static final POINT_CONVERSION_COMPRESSED:I = 0x2

.field public static final POINT_CONVERSION_HYBRID:I = 0x4

.field public static final POINT_CONVERSION_UNCOMPRESSED:I = 0x4

.field public static final RAND_SEED_LENGTH_IN_BYTES:I = 0x400

.field public static final RSA_NO_PADDING:I = 0x3

.field public static final RSA_PKCS1_PADDING:I = 0x1

.field public static final SSL3_RT_HEADER_LENGTH:I = 0x5

.field public static final SSL3_RT_MAX_COMPRESSED_LENGTH:I = 0x4000

.field public static final SSL3_RT_MAX_ENCRYPTED_LENGTH:I = 0x4140

.field public static final SSL3_RT_MAX_ENCRYPTED_OVERHEAD:I = 0x140

.field public static final SSL3_RT_MAX_MD_SIZE:I = 0x40

.field public static final SSL3_RT_MAX_PACKET_SIZE:I = 0x4145

.field public static final SSL3_RT_MAX_PLAIN_LENGTH:I = 0x4000

.field public static final SSL3_RT_SEND_MAX_ENCRYPTED_OVERHEAD:I = 0x50

.field public static final SSL_CB_ACCEPT_EXIT:I = 0x2002

.field public static final SSL_CB_ACCEPT_LOOP:I = 0x2001

.field public static final SSL_CB_ALERT:I = 0x4000

.field public static final SSL_CB_CONNECT_EXIT:I = 0x1002

.field public static final SSL_CB_CONNECT_LOOP:I = 0x1001

.field public static final SSL_CB_EXIT:I = 0x2

.field public static final SSL_CB_HANDSHAKE_DONE:I = 0x20

.field public static final SSL_CB_HANDSHAKE_START:I = 0x10

.field public static final SSL_CB_LOOP:I = 0x1

.field public static final SSL_CB_READ:I = 0x4

.field public static final SSL_CB_READ_ALERT:I = 0x4004

.field public static final SSL_CB_WRITE:I = 0x8

.field public static final SSL_CB_WRITE_ALERT:I = 0x4008

.field public static final SSL_MODE_CBC_RECORD_SPLITTING:J = 0x100L

.field public static final SSL_MODE_HANDSHAKE_CUTTHROUGH:J = 0x80L

.field public static final SSL_OP_NO_SESSION_RESUMPTION_ON_RENEGOTIATION:J = 0x10000L

.field public static final SSL_OP_NO_SSLv3:J = 0x2000000L

.field public static final SSL_OP_NO_TICKET:J = 0x4000L

.field public static final SSL_OP_NO_TLSv1:J = 0x4000000L

.field public static final SSL_OP_NO_TLSv1_1:J = 0x10000000L

.field public static final SSL_OP_NO_TLSv1_2:J = 0x8000000L

.field public static final SSL_OP_TLSEXT_PADDING:J = 0x10L

.field public static final SSL_RECEIVED_SHUTDOWN:I = 0x2

.field public static final SSL_RT_MAX_CIPHER_BLOCK_SIZE:I = 0x10

.field public static final SSL_SENT_SHUTDOWN:I = 0x1

.field public static final SSL_ST_ACCEPT:I = 0x2000

.field public static final SSL_ST_BEFORE:I = 0x4000

.field public static final SSL_ST_CONNECT:I = 0x1000

.field public static final SSL_ST_INIT:I = 0x3000

.field public static final SSL_ST_MASK:I = 0xfff

.field public static final SSL_ST_OK:I = 0x3

.field public static final SSL_ST_RENEGOTIATE:I = 0x3004

.field public static final SSL_VERIFY_FAIL_IF_NO_PEER_CERT:I = 0x2

.field public static final SSL_VERIFY_NONE:I = 0x0

.field public static final SSL_VERIFY_PEER:I = 0x1

.field public static final SSL_aDH:I = 0x8

.field public static final SSL_aDSS:I = 0x2

.field public static final SSL_aECDH:I = 0x10

.field public static final SSL_aECDSA:I = 0x40

.field public static final SSL_aGOST01:I = 0x200

.field public static final SSL_aGOST94:I = 0x100

.field public static final SSL_aKRB5:I = 0x20

.field public static final SSL_aNULL:I = 0x4

.field public static final SSL_aPSK:I = 0x80

.field public static final SSL_aRSA:I = 0x1

.field public static final SSL_kDHd:I = 0x4

.field public static final SSL_kDHr:I = 0x2

.field public static final SSL_kECDHe:I = 0x40

.field public static final SSL_kECDHr:I = 0x20

.field public static final SSL_kEDH:I = 0x8

.field public static final SSL_kEECDH:I = 0x80

.field public static final SSL_kGOST:I = 0x200

.field public static final SSL_kKRB5:I = 0x10

.field public static final SSL_kPSK:I = 0x100

.field public static final SSL_kRSA:I = 0x1

.field public static final SSL_kSRP:I = 0x400

.field public static final STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

.field private static final SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

.field private static final SUPPORTED_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field public static final TLS_CT_DSS_FIXED_DH:B = 0x4t

.field public static final TLS_CT_DSS_SIGN:B = 0x2t

.field public static final TLS_CT_ECDSA_FIXED_ECDH:B = 0x42t

.field public static final TLS_CT_ECDSA_SIGN:B = 0x40t

.field public static final TLS_CT_RSA_FIXED_DH:B = 0x3t

.field public static final TLS_CT_RSA_FIXED_ECDH:B = 0x41t

.field public static final TLS_CT_RSA_SIGN:B = 0x1t

.field public static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const-string v0, "com.android.org.conscrypt"

    const-class v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "javacrypto"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 63
    :goto_0
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->clinit()V

    .line 599
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    .line 601
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    .line 632
    const-string v0, "SSL_RSA_WITH_RC4_128_MD5"

    const-string v1, "RC4-MD5"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "SSL_RSA_WITH_RC4_128_SHA"

    const-string v1, "RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const-string v1, "AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const-string v1, "AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const-string v1, "ECDH-ECDSA-RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v1, "ECDH-ECDSA-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v1, "ECDH-ECDSA-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const-string v1, "ECDH-RSA-RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const-string v1, "ECDH-RSA-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const-string v1, "ECDH-RSA-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const-string v1, "ECDHE-ECDSA-RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const-string v1, "ECDHE-ECDSA-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const-string v1, "ECDHE-ECDSA-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const-string v1, "ECDHE-RSA-RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v1, "ECDHE-RSA-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v1, "ECDHE-RSA-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const-string v1, "DHE-RSA-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const-string v1, "DHE-RSA-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const-string v1, "DHE-DSS-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const-string v1, "DHE-DSS-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "ECDH-ECDSA-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "ECDH-RSA-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "ECDHE-ECDSA-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "ECDHE-RSA-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "EDH-RSA-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "EDH-DSS-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const-string v1, "DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const-string v1, "EDH-RSA-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const-string v1, "EDH-DSS-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const-string v1, "EXP-RC4-MD5"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v1, "EXP-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const-string v1, "EXP-EDH-RSA-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const-string v1, "EXP-EDH-DSS-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v0, "SSL_RSA_WITH_NULL_MD5"

    const-string v1, "NULL-MD5"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v0, "SSL_RSA_WITH_NULL_SHA"

    const-string v1, "NULL-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    const-string v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const-string v1, "ECDH-ECDSA-NULL-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const-string v1, "ECDH-RSA-NULL-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const-string v1, "ECDHE-ECDSA-NULL-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const-string v1, "ECDHE-RSA-NULL-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-string v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const-string v1, "ADH-RC4-MD5"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const-string v1, "ADH-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const-string v1, "ADH-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "ADH-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const-string v1, "ADH-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const-string v1, "AECDH-RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const-string v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const-string v1, "AECDH-AES128-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const-string v1, "AECDH-AES256-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "AECDH-DES-CBC3-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const-string v1, "EXP-ADH-RC4-MD5"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const-string v1, "EXP-ADH-DES-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const-string v1, "AECDH-NULL-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    const-string v1, "NULL-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const-string v1, "AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const-string v1, "AES256-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const-string v1, "AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v1, "DHE-RSA-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const-string v1, "DHE-RSA-AES256-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "DHE-RSA-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const-string v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v1, "DHE-RSA-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const-string v1, "DHE-DSS-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const-string v1, "DHE-DSS-AES256-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const-string v1, "DHE-DSS-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const-string v1, "DHE-DSS-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const-string v1, "ECDH-RSA-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const-string v1, "ECDH-RSA-AES256-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "ECDH-RSA-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const-string v1, "ECDH-RSA-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const-string v1, "ECDH-ECDSA-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const-string v1, "ECDH-ECDSA-AES256-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "ECDH-ECDSA-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v1, "ECDH-ECDSA-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const-string v1, "ECDHE-RSA-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const-string v1, "ECDHE-RSA-AES256-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "ECDHE-RSA-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const-string v1, "ECDHE-RSA-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const-string v1, "ECDHE-ECDSA-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const-string v1, "ECDHE-ECDSA-AES256-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const-string v1, "ECDHE-ECDSA-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const-string v1, "ECDHE-ECDSA-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const-string v1, "ADH-AES128-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const-string v1, "ADH-AES256-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const-string v1, "ADH-AES128-GCM-SHA256"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const-string v1, "ADH-AES256-GCM-SHA384"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const-string v1, "PSK-3DES-EDE-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const-string v1, "PSK-AES128-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const-string v1, "PSK-AES256-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string v0, "TLS_PSK_WITH_RC4_128_SHA"

    const-string v1, "PSK-RC4-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const-string v1, "ECDHE-PSK-AES128-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const-string v1, "ECDHE-PSK-AES256-CBC-SHA"

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 761
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    .line 762
    sget-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 763
    sget-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v0

    .line 833
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v1, v0, v3

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v1, v0, v4

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v1, v0, v5

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v1, v0, v6

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "SSL_RSA_WITH_RC4_128_SHA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    .line 858
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    aput-object v1, v0, v3

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    aput-object v1, v0, v4

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    aput-object v1, v0, v5

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    .line 908
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "SSLv3"

    aput-object v1, v0, v3

    const-string v1, "TLSv1"

    aput-object v1, v0, v4

    const-string v1, "TLSv1.1"

    aput-object v1, v0, v5

    const-string v1, "TLSv1.2"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    return-void

    .line 56
    :cond_0
    const-string v0, "com.google.android.gms.org.conscrypt"

    const-class v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const-string v0, "gmscore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    const-string v0, "conscrypt_gmscore_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :cond_1
    const-string v0, "conscrypt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    return-void
.end method

.method public static native ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V
.end method

.method public static native ASN1_seq_pack_X509([J)[B
.end method

.method public static native ASN1_seq_unpack_X509_bio(J)[J
.end method

.method public static native BIO_free_all(J)V
.end method

.method public static native BIO_read(J[B)I
.end method

.method public static native BIO_write(J[BII)V
.end method

.method public static native DH_generate_key(J)V
.end method

.method public static native DH_generate_parameters_ex(IJ)J
.end method

.method public static native DSA_generate_key(I[B[B[B[B)J
.end method

.method public static native ECDH_compute_key([BIJJ)I
.end method

.method public static native EC_GROUP_clear_free(J)V
.end method

.method public static native EC_GROUP_cmp(JJ)Z
.end method

.method public static native EC_GROUP_dup(J)J
.end method

.method public static native EC_GROUP_get_cofactor(J)[B
.end method

.method public static native EC_GROUP_get_curve(J)[[B
.end method

.method public static native EC_GROUP_get_curve_name(J)Ljava/lang/String;
.end method

.method public static native EC_GROUP_get_degree(J)I
.end method

.method public static native EC_GROUP_get_generator(J)J
.end method

.method public static native EC_GROUP_get_order(J)[B
.end method

.method public static native EC_GROUP_new_by_curve_name(Ljava/lang/String;)J
.end method

.method public static native EC_GROUP_new_curve(I[B[B[B)J
.end method

.method public static native EC_GROUP_set_asn1_flag(JI)V
.end method

.method public static native EC_GROUP_set_generator(JJ[B[B)V
.end method

.method public static native EC_GROUP_set_point_conversion_form(JI)V
.end method

.method public static native EC_KEY_generate_key(J)J
.end method

.method public static native EC_KEY_get0_group(J)J
.end method

.method public static native EC_KEY_get_private_key(J)[B
.end method

.method public static native EC_KEY_get_public_key(J)J
.end method

.method public static native EC_KEY_set_nonce_from_hash(JZ)V
.end method

.method public static native EC_POINT_clear_free(J)V
.end method

.method public static native EC_POINT_cmp(JJJ)Z
.end method

.method public static native EC_POINT_get_affine_coordinates(JJ)[[B
.end method

.method public static native EC_POINT_new(J)J
.end method

.method public static native EC_POINT_set_affine_coordinates(JJ[B[B)V
.end method

.method public static native ENGINE_add(J)I
.end method

.method public static native ENGINE_by_id(Ljava/lang/String;)J
.end method

.method public static native ENGINE_ctrl_cmd_string(JLjava/lang/String;Ljava/lang/String;I)I
.end method

.method public static native ENGINE_finish(J)I
.end method

.method public static native ENGINE_free(J)I
.end method

.method public static native ENGINE_get_id(J)Ljava/lang/String;
.end method

.method public static native ENGINE_init(J)I
.end method

.method public static native ENGINE_load_dynamic()V
.end method

.method public static native ENGINE_load_private_key(JLjava/lang/String;)J
.end method

.method public static native ERR_peek_last_error()J
.end method

.method public static native EVP_CIPHER_CTX_block_size(J)I
.end method

.method public static native EVP_CIPHER_CTX_cleanup(J)V
.end method

.method public static native EVP_CIPHER_CTX_new()J
.end method

.method public static native EVP_CIPHER_CTX_set_key_length(JI)V
.end method

.method public static native EVP_CIPHER_CTX_set_padding(JZ)V
.end method

.method public static native EVP_CIPHER_iv_length(J)I
.end method

.method public static native EVP_CipherFinal_ex(J[BI)I
.end method

.method public static native EVP_CipherInit_ex(JJ[B[BZ)V
.end method

.method public static native EVP_CipherUpdate(J[BI[BII)I
.end method

.method public static native EVP_DigestFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BI)I
.end method

.method public static native EVP_DigestInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;J)I
.end method

.method public static native EVP_DigestSignFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)[B
.end method

.method public static native EVP_DigestSignInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;JJ)V
.end method

.method public static native EVP_DigestSignUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[B)V
.end method

.method public static native EVP_DigestUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V
.end method

.method public static native EVP_MD_CTX_copy(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)I
.end method

.method public static native EVP_MD_CTX_create()J
.end method

.method public static native EVP_MD_CTX_destroy(J)V
.end method

.method public static native EVP_MD_CTX_init(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V
.end method

.method public static native EVP_MD_block_size(J)I
.end method

.method public static native EVP_MD_size(J)I
.end method

.method public static native EVP_PKEY_cmp(JJ)I
.end method

.method public static native EVP_PKEY_free(J)V
.end method

.method public static native EVP_PKEY_new_DH([B[B[B[B)J
.end method

.method public static native EVP_PKEY_new_DSA([B[B[B[B[B)J
.end method

.method public static native EVP_PKEY_new_EC_KEY(JJ[B)J
.end method

.method public static native EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J
.end method

.method public static native EVP_PKEY_new_mac_key(I[B)J
.end method

.method public static native EVP_PKEY_print_private(J)Ljava/lang/String;
.end method

.method public static native EVP_PKEY_print_public(J)Ljava/lang/String;
.end method

.method public static native EVP_PKEY_size(J)I
.end method

.method public static native EVP_PKEY_type(J)I
.end method

.method public static native EVP_SignFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BIJ)I
.end method

.method public static native EVP_SignInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;J)I
.end method

.method public static native EVP_SignUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V
.end method

.method public static native EVP_VerifyFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BIIJ)I
.end method

.method public static native EVP_VerifyInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;J)I
.end method

.method public static native EVP_VerifyUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V
.end method

.method public static native EVP_get_cipherbyname(Ljava/lang/String;)J
.end method

.method public static native EVP_get_digestbyname(Ljava/lang/String;)J
.end method

.method public static native OBJ_txt2nid(Ljava/lang/String;)I
.end method

.method public static native OBJ_txt2nid_longName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native OBJ_txt2nid_oid(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native PEM_read_bio_PKCS7(JI)[J
.end method

.method public static native PEM_read_bio_X509(J)J
.end method

.method public static native PEM_read_bio_X509_CRL(J)J
.end method

.method public static native RAND_bytes([B)V
.end method

.method public static native RAND_load_file(Ljava/lang/String;J)I
.end method

.method public static native RAND_seed([B)V
.end method

.method public static native RSA_generate_key_ex(I[B)J
.end method

.method public static native RSA_private_decrypt(I[B[BJI)I
.end method

.method public static native RSA_private_encrypt(I[B[BJI)I
.end method

.method public static native RSA_public_decrypt(I[B[BJI)I
.end method

.method public static native RSA_public_encrypt(I[B[BJI)I
.end method

.method public static native RSA_size(J)I
.end method

.method public static native SSL_CTX_disable_npn(J)V
.end method

.method public static native SSL_CTX_enable_npn(J)V
.end method

.method public static native SSL_CTX_free(J)V
.end method

.method public static native SSL_CTX_new()J
.end method

.method public static native SSL_CTX_set_session_id_context(J[B)V
.end method

.method public static native SSL_SESSION_cipher(J)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_free(J)V
.end method

.method public static native SSL_SESSION_get_time(J)J
.end method

.method public static native SSL_SESSION_get_version(J)Ljava/lang/String;
.end method

.method public static native SSL_SESSION_session_id(J)[B
.end method

.method public static native SSL_check_private_key(J)V
.end method

.method public static native SSL_clear_mode(JJ)J
.end method

.method public static native SSL_clear_options(JJ)J
.end method

.method public static native SSL_do_handshake(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;IZ[B[B)J
.end method

.method public static native SSL_do_handshake_bio(JJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
.end method

.method public static native SSL_enable_tls_channel_id(J)V
.end method

.method public static native SSL_free(J)V
.end method

.method public static native SSL_get0_alpn_selected(J)[B
.end method

.method public static native SSL_get_certificate(J)[J
.end method

.method public static native SSL_get_ciphers(J)[J
.end method

.method public static native SSL_get_mode(J)J
.end method

.method public static native SSL_get_npn_negotiated_protocol(J)[B
.end method

.method public static native SSL_get_options(J)J
.end method

.method public static native SSL_get_peer_cert_chain(J)[J
.end method

.method public static native SSL_get_servername(J)Ljava/lang/String;
.end method

.method public static native SSL_get_shutdown(J)I
.end method

.method public static native SSL_get_tls_channel_id(J)[B
.end method

.method public static native SSL_interrupt(J)V
.end method

.method public static native SSL_new(J)J
.end method

.method public static native SSL_read(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
.end method

.method public static native SSL_read_BIO(J[BIIJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
.end method

.method public static native SSL_renegotiate(J)V
.end method

.method public static native SSL_set1_tls_channel_id(JJ)V
.end method

.method public static native SSL_set_accept_state(J)V
.end method

.method public static native SSL_set_alpn_protos(J[B)I
.end method

.method public static native SSL_set_cipher_lists(J[Ljava/lang/String;)V
.end method

.method public static native SSL_set_client_CA_list(J[[B)V
.end method

.method public static native SSL_set_connect_state(J)V
.end method

.method public static native SSL_set_mode(JJ)J
.end method

.method public static native SSL_set_options(JJ)J
.end method

.method public static native SSL_set_session(JJ)V
.end method

.method public static native SSL_set_session_creation_enabled(JZ)V
.end method

.method public static native SSL_set_tlsext_host_name(JLjava/lang/String;)V
.end method

.method public static native SSL_set_verify(JI)V
.end method

.method public static native SSL_shutdown(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
.end method

.method public static native SSL_shutdown_BIO(JJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
.end method

.method public static native SSL_use_PrivateKey(JJ)V
.end method

.method public static native SSL_use_certificate(J[J)V
.end method

.method public static native SSL_use_psk_identity_hint(JLjava/lang/String;)V
.end method

.method public static native SSL_write(JLjava/io/FileDescriptor;Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
.end method

.method public static native SSL_write_BIO(J[BIJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
.end method

.method public static native X509_CRL_free(J)V
.end method

.method public static native X509_CRL_get0_by_cert(JJ)J
.end method

.method public static native X509_CRL_get0_by_serial(J[B)J
.end method

.method public static native X509_CRL_get_REVOKED(J)[J
.end method

.method public static native X509_CRL_get_ext(JLjava/lang/String;)J
.end method

.method public static native X509_CRL_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_CRL_get_issuer_name(J)[B
.end method

.method public static native X509_CRL_get_lastUpdate(J)J
.end method

.method public static native X509_CRL_get_nextUpdate(J)J
.end method

.method public static native X509_CRL_get_version(J)J
.end method

.method public static native X509_CRL_print(JJ)V
.end method

.method public static native X509_CRL_verify(JJ)V
.end method

.method public static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1

    .prologue
    .line 373
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 380
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 381
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1

    .prologue
    .line 376
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static native X509_NAME_print_ex(JJ)Ljava/lang/String;
.end method

.method public static native X509_REVOKED_dup(J)J
.end method

.method public static native X509_REVOKED_get_ext(JLjava/lang/String;)J
.end method

.method public static native X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_REVOKED_get_serialNumber(J)[B
.end method

.method public static native X509_REVOKED_print(JJ)V
.end method

.method public static native X509_check_issued(JJ)I
.end method

.method public static native X509_cmp(JJ)I
.end method

.method public static native X509_free(J)V
.end method

.method public static native X509_get_ext_oid(JLjava/lang/String;)[B
.end method

.method public static native X509_get_issuer_name(J)[B
.end method

.method public static native X509_get_notAfter(J)J
.end method

.method public static native X509_get_notBefore(J)J
.end method

.method public static native X509_get_pubkey(J)J
.end method

.method public static native X509_get_serialNumber(J)[B
.end method

.method public static native X509_get_subject_name(J)[B
.end method

.method public static native X509_get_version(J)J
.end method

.method public static native X509_print_ex(JJJJ)V
.end method

.method public static native X509_supported_extension(J)I
.end method

.method public static native X509_verify(JJ)V
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 605
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    return-void
.end method

.method public static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1054
    if-nez p0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipherSuites == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 1059
    aget-object v1, p0, v0

    .line 1060
    if-nez v1, :cond_1

    .line 1061
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherSuites["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] == null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1063
    :cond_1
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1064
    sget-object v2, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1067
    sget-object v2, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1071
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cipherSuite "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1075
    :cond_3
    return-object p0
.end method

.method public static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 955
    if-nez p0, :cond_0

    .line 956
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 959
    aget-object v1, p0, v0

    .line 960
    if-nez v1, :cond_1

    .line 961
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocols["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] == null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 963
    :cond_1
    const-string v2, "SSLv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLSv1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLSv1.2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 967
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocol "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 971
    :cond_3
    return-object p0
.end method

.method private static native clinit()V
.end method

.method public static native create_BIO_InputStream(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;)J
.end method

.method public static native create_BIO_OutputStream(Ljava/io/OutputStream;)J
.end method

.method public static native d2i_PKCS7_bio(JI)[J
.end method

.method public static native d2i_PKCS8_PRIV_KEY_INFO([B)J
.end method

.method public static native d2i_PUBKEY([B)J
.end method

.method public static native d2i_SSL_SESSION([B)J
.end method

.method public static native d2i_X509([B)J
.end method

.method public static native d2i_X509_CRL_bio(J)J
.end method

.method public static native d2i_X509_bio(J)J
.end method

.method public static native getDSAPrivateKeyWrapper(Ljava/security/interfaces/DSAPrivateKey;)J
.end method

.method public static native getECPrivateKeyWrapper(Ljava/security/interfaces/ECPrivateKey;J)J
.end method

.method public static native getRSAPrivateKeyWrapper(Ljava/security/interfaces/RSAPrivateKey;[B)J
.end method

.method public static getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 866
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SUPPORTED_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportedProtocols()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 916
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TLSv1.1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TLSv1.2"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static native get_DH_params(J)[[B
.end method

.method public static native get_DSA_params(J)[[B
.end method

.method public static native get_EC_GROUP_type(J)I
.end method

.method public static native get_EVP_CIPHER_CTX_buf_len(J)I
.end method

.method public static native get_RSA_private_params(J)[[B
.end method

.method public static native get_RSA_public_params(J)[[B
.end method

.method public static native get_SSL_CIPHER_algorithm_auth(J)I
.end method

.method public static native get_SSL_CIPHER_algorithm_mkey(J)I
.end method

.method public static native get_X509_CRL_crl_enc(J)[B
.end method

.method public static native get_X509_CRL_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_CRL_sig_alg_parameter(J)[B
.end method

.method public static native get_X509_CRL_signature(J)[B
.end method

.method public static native get_X509_GENERAL_NAME_stack(JI)[[Ljava/lang/Object;
.end method

.method public static native get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_REVOKED_revocationDate(J)J
.end method

.method public static native get_X509_cert_info_enc(J)[B
.end method

.method public static native get_X509_ex_flags(J)I
.end method

.method public static native get_X509_ex_kusage(J)[Z
.end method

.method public static native get_X509_ex_pathlen(J)I
.end method

.method public static native get_X509_ex_xkusage(J)[Ljava/lang/String;
.end method

.method public static native get_X509_ext_oids(JI)[Ljava/lang/String;
.end method

.method public static native get_X509_hashCode(J)I
.end method

.method public static native get_X509_issuerUID(J)[Z
.end method

.method public static native get_X509_pubkey_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_sig_alg_oid(J)Ljava/lang/String;
.end method

.method public static native get_X509_sig_alg_parameter(J)[B
.end method

.method public static native get_X509_signature(J)[B
.end method

.method public static native get_X509_subjectUID(J)[Z
.end method

.method public static native i2d_DSAPrivateKey(J)[B
.end method

.method public static native i2d_DSAPublicKey(J)[B
.end method

.method public static native i2d_PKCS7([J)[B
.end method

.method public static native i2d_PKCS8_PRIV_KEY_INFO(J)[B
.end method

.method public static native i2d_PUBKEY(J)[B
.end method

.method public static native i2d_RSAPrivateKey(J)[B
.end method

.method public static native i2d_RSAPublicKey(J)[B
.end method

.method public static native i2d_SSL_SESSION(J)[B
.end method

.method public static native i2d_X509(J)[B
.end method

.method public static native i2d_X509_CRL(J)[B
.end method

.method public static native i2d_X509_PUBKEY(J)[B
.end method

.method public static native i2d_X509_REVOKED(J)[B
.end method

.method public static setEnabledCipherSuites(J[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1039
    invoke-static {p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    .line 1040
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1041
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_2

    .line 1042
    aget-object v2, p2, v1

    .line 1043
    const-string v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1044
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->STANDARD_TO_OPENSSL_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1047
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1048
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1050
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_cipher_lists(J[Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public static setEnabledProtocols(J[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 924
    invoke-static {p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    .line 928
    const-wide/32 v4, 0x1e000000

    .line 929
    const-wide/16 v2, 0x0

    .line 930
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 931
    aget-object v1, p2, v0

    .line 932
    const-string v6, "SSLv3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 933
    const-wide/32 v6, -0x2000001

    and-long/2addr v4, v6

    .line 934
    const-wide/32 v6, 0x2000000

    or-long/2addr v2, v6

    .line 930
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 935
    :cond_0
    const-string v6, "TLSv1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 936
    const-wide/32 v6, -0x4000001

    and-long/2addr v4, v6

    .line 937
    const-wide/32 v6, 0x4000000

    or-long/2addr v2, v6

    goto :goto_1

    .line 938
    :cond_1
    const-string v6, "TLSv1.1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 939
    const-wide/32 v6, -0x10000001

    and-long/2addr v4, v6

    .line 940
    const-wide/32 v6, 0x10000000

    or-long/2addr v2, v6

    goto :goto_1

    .line 941
    :cond_2
    const-string v6, "TLSv1.2"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 942
    const-wide/32 v6, -0x8000001

    and-long/2addr v4, v6

    .line 943
    const-wide/32 v6, 0x8000000

    or-long/2addr v2, v6

    goto :goto_1

    .line 946
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 950
    :cond_4
    invoke-static {p0, p1, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_options(JJ)J

    .line 951
    invoke-static {p0, p1, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    .line 952
    return-void
.end method

.method public static native set_DSA_flag_nonce_from_hash(J)V
.end method

.method public static native set_SSL_psk_client_callback_enabled(JZ)V
.end method

.method public static native set_SSL_psk_server_callback_enabled(JZ)V
.end method
