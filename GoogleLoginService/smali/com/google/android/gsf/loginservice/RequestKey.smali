.class public final enum Lcom/google/android/gsf/loginservice/RequestKey;
.super Ljava/lang/Enum;
.source "RequestKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/loginservice/RequestKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum AGREE_MOBILE_TOS:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum AGREE_PERSONALIZED_CONTENT:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum ANDROID_ID:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum BROWSER_FLOW:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum CAPTCHA_BITMAP:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum CLIENT_ID:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum CREATED:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum EMAIL:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum FIRST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum GENDER:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum GPLUS_CHECK:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum LANGUAGE:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum LAST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum LSID:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum PACKAGE:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum PACKAGE_SIG:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum PARENT_ANDROID_ID:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum PHOTO:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum SDK_VERSION:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum SERVICE:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum STORED_PERMISSION:Lcom/google/android/gsf/loginservice/RequestKey;

.field public static final enum TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "EMAIL"

    const-string v2, "Email"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 12
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "TOKEN"

    const-string v2, "Token"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 15
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "SERVICE"

    const-string v2, "service"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 20
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "ENCRYPTED_PASSWORD"

    const-string v2, "EncryptedPasswd"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 23
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "PASSWORD"

    const-string v2, "Passwd"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 26
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "ANDROID_ID"

    const/4 v2, 0x5

    const-string v3, "androidId"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 33
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "PARENT_ANDROID_ID"

    const/4 v2, 0x6

    const-string v3, "parentAndroidId"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->PARENT_ANDROID_ID:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 36
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "ACCOUNT_SOURCE"

    const/4 v2, 0x7

    const-string v3, "source"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 39
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "CAPTCHA_ANSWER"

    const/16 v2, 0x8

    const-string v3, "logincaptcha"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 42
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "CAPTCHA_TOKEN"

    const/16 v2, 0x9

    const-string v3, "logintoken"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 44
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "CAPTCHA_BITMAP"

    const/16 v2, 0xa

    const-string v3, "captchaBitmap"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_BITMAP:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 47
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "OPERATOR_COUNTRY"

    const/16 v2, 0xb

    const-string v3, "operatorCountry"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 50
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "DEVICE_COUNTRY"

    const/16 v2, 0xc

    const-string v3, "device_country"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 53
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "LANGUAGE"

    const/16 v2, 0xd

    const-string v3, "lang"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 56
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "STORED_PERMISSION"

    const/16 v2, 0xe

    const-string v3, "has_permission"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->STORED_PERMISSION:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 59
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "PACKAGE"

    const/16 v2, 0xf

    const-string v3, "app"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->PACKAGE:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 62
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "PACKAGE_SIG"

    const/16 v2, 0x10

    const-string v3, "client_sig"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->PACKAGE_SIG:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 67
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "OAUTH2_EXTRA_PREFIX"

    const/16 v2, 0x11

    const-string v3, "oauth2_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 70
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "CLIENT_ID"

    const/16 v2, 0x12

    const-string v3, "client_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->CLIENT_ID:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 76
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "ACCESS_TOKEN"

    const/16 v2, 0x13

    const-string v3, "ACCESS_TOKEN"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 79
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "BROWSER_FLOW"

    const/16 v2, 0x14

    const-string v3, "browserFlow"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->BROWSER_FLOW:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 81
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "LAST_NAME"

    const/16 v2, 0x15

    const-string v3, "lastName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 83
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "FIRST_NAME"

    const/16 v2, 0x16

    const-string v3, "firstName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 85
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "PHOTO"

    const/16 v2, 0x17

    const-string v3, "photo"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->PHOTO:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 87
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "GENDER"

    const/16 v2, 0x18

    const-string v3, "gender"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 90
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "ADDED_ACCOUNT"

    const/16 v2, 0x19

    const-string v3, "add_account"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 93
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "GPLUS_CHECK"

    const/16 v2, 0x1a

    const-string v3, "gplus_check"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->GPLUS_CHECK:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 95
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "LSID"

    const/16 v2, 0x1b

    const-string v3, "LSID"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->LSID:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 100
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "CREATED"

    const/16 v2, 0x1c

    const-string v3, "created"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->CREATED:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 102
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "SDK_VERSION"

    const/16 v2, 0x1d

    const-string v3, "sdk_version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->SDK_VERSION:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 103
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "AGREE_PERSONALIZED_CONTENT"

    const/16 v2, 0x1e

    const-string v3, "agreePersonalizedContent"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->AGREE_PERSONALIZED_CONTENT:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 104
    new-instance v0, Lcom/google/android/gsf/loginservice/RequestKey;

    const-string v1, "AGREE_MOBILE_TOS"

    const/16 v2, 0x1f

    const-string v3, "agreeMobileTos"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/RequestKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->AGREE_MOBILE_TOS:Lcom/google/android/gsf/loginservice/RequestKey;

    .line 7
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/google/android/gsf/loginservice/RequestKey;

    sget-object v1, Lcom/google/android/gsf/loginservice/RequestKey;->EMAIL:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/loginservice/RequestKey;->TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/loginservice/RequestKey;->SERVICE:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/loginservice/RequestKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gsf/loginservice/RequestKey;->PASSWORD:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->PARENT_ANDROID_ID:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->CAPTCHA_BITMAP:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->OPERATOR_COUNTRY:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->DEVICE_COUNTRY:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->LANGUAGE:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->STORED_PERMISSION:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->PACKAGE:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->PACKAGE_SIG:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->OAUTH2_EXTRA_PREFIX:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->CLIENT_ID:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->ACCESS_TOKEN:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->BROWSER_FLOW:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->LAST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->FIRST_NAME:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->PHOTO:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->GENDER:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->ADDED_ACCOUNT:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->GPLUS_CHECK:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->LSID:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->CREATED:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->SDK_VERSION:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->AGREE_PERSONALIZED_CONTENT:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/google/android/gsf/loginservice/RequestKey;->AGREE_MOBILE_TOS:Lcom/google/android/gsf/loginservice/RequestKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->$VALUES:[Lcom/google/android/gsf/loginservice/RequestKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/RequestKey;->key:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/RequestKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/loginservice/RequestKey;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gsf/loginservice/RequestKey;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/gsf/loginservice/RequestKey;->$VALUES:[Lcom/google/android/gsf/loginservice/RequestKey;

    invoke-virtual {v0}, [Lcom/google/android/gsf/loginservice/RequestKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/loginservice/RequestKey;

    return-object v0
.end method


# virtual methods
.method public getWire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/RequestKey;->key:Ljava/lang/String;

    return-object v0
.end method
