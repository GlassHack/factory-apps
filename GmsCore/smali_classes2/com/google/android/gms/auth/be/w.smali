.class public final enum Lcom/google/android/gms/auth/be/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lcom/google/android/gms/auth/be/w;

.field public static final enum B:Lcom/google/android/gms/auth/be/w;

.field public static final enum C:Lcom/google/android/gms/auth/be/w;

.field public static final enum D:Lcom/google/android/gms/auth/be/w;

.field private static final synthetic F:[Lcom/google/android/gms/auth/be/w;

.field public static final enum a:Lcom/google/android/gms/auth/be/w;

.field public static final enum b:Lcom/google/android/gms/auth/be/w;

.field public static final enum c:Lcom/google/android/gms/auth/be/w;

.field public static final enum d:Lcom/google/android/gms/auth/be/w;

.field public static final enum e:Lcom/google/android/gms/auth/be/w;

.field public static final enum f:Lcom/google/android/gms/auth/be/w;

.field public static final enum g:Lcom/google/android/gms/auth/be/w;

.field public static final enum h:Lcom/google/android/gms/auth/be/w;

.field public static final enum i:Lcom/google/android/gms/auth/be/w;

.field public static final enum j:Lcom/google/android/gms/auth/be/w;

.field public static final enum k:Lcom/google/android/gms/auth/be/w;

.field public static final enum l:Lcom/google/android/gms/auth/be/w;

.field public static final enum m:Lcom/google/android/gms/auth/be/w;

.field public static final enum n:Lcom/google/android/gms/auth/be/w;

.field public static final enum o:Lcom/google/android/gms/auth/be/w;

.field public static final enum p:Lcom/google/android/gms/auth/be/w;

.field public static final enum q:Lcom/google/android/gms/auth/be/w;

.field public static final enum r:Lcom/google/android/gms/auth/be/w;

.field public static final enum s:Lcom/google/android/gms/auth/be/w;

.field public static final enum t:Lcom/google/android/gms/auth/be/w;

.field public static final enum u:Lcom/google/android/gms/auth/be/w;

.field public static final enum v:Lcom/google/android/gms/auth/be/w;

.field public static final enum w:Lcom/google/android/gms/auth/be/w;

.field public static final enum x:Lcom/google/android/gms/auth/be/w;

.field public static final enum y:Lcom/google/android/gms/auth/be/w;

.field public static final enum z:Lcom/google/android/gms/auth/be/w;


# instance fields
.field private final E:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "AUTH"

    const-string v2, "Auth"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->a:Lcom/google/android/gms/auth/be/w;

    .line 13
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "EMAIL"

    const-string v2, "Email"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    .line 14
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "STATUS"

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->T:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->c:Lcom/google/android/gms/auth/be/w;

    .line 15
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "JSON_STATUS"

    sget-object v2, Lcom/google/android/gms/auth/firstparty/shared/k;->U:Ljava/lang/String;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->d:Lcom/google/android/gms/auth/be/w;

    .line 16
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "CAPTCHA_TOKEN_RES"

    const-string v2, "CaptchaToken"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->e:Lcom/google/android/gms/auth/be/w;

    .line 17
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "DETAIL"

    const/4 v2, 0x5

    const-string v3, "ErrorDetail"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->f:Lcom/google/android/gms/auth/be/w;

    .line 18
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "CAPTCHA_URL"

    const/4 v2, 0x6

    const-string v3, "CaptchaUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->g:Lcom/google/android/gms/auth/be/w;

    .line 19
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "CAPTCHA_DATA"

    const/4 v2, 0x7

    const-string v3, "CaptchaData"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->h:Lcom/google/android/gms/auth/be/w;

    .line 20
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "SERVICES"

    const/16 v2, 0x8

    const-string v3, "services"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    .line 21
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "YOUTUBE_USER"

    const/16 v2, 0x9

    const-string v3, "YouTubeUser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->j:Lcom/google/android/gms/auth/be/w;

    .line 22
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "ACCOUNT_ID"

    const/16 v2, 0xa

    const-string v3, "accountId"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->k:Lcom/google/android/gms/auth/be/w;

    .line 27
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "PICASA_USER"

    const/16 v2, 0xb

    const-string v3, "PicasaUser"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->l:Lcom/google/android/gms/auth/be/w;

    .line 36
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "SCOPE_CONSENT_DESCRIPTION"

    const/16 v2, 0xc

    const-string v3, "Permission"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->m:Lcom/google/android/gms/auth/be/w;

    .line 44
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "SCOPE_CONSENT_DETAILS"

    const/16 v2, 0xd

    const-string v3, "ScopeConsentDetails"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->n:Lcom/google/android/gms/auth/be/w;

    .line 51
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "PERMISSION_ADVICE"

    const/16 v2, 0xe

    const-string v3, "issueAdvice"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->o:Lcom/google/android/gms/auth/be/w;

    .line 55
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "STORE_CONSENT_REMOTELY"

    const/16 v2, 0xf

    const-string v3, "storeConsentRemotely"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->p:Lcom/google/android/gms/auth/be/w;

    .line 60
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "EXPIRY_IN_S"

    const/16 v2, 0x10

    const-string v3, "Expiry"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->q:Lcom/google/android/gms/auth/be/w;

    .line 66
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "INFO"

    const/16 v2, 0x11

    const-string v3, "Info"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->r:Lcom/google/android/gms/auth/be/w;

    .line 71
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "TOKEN"

    const/16 v2, 0x12

    const-string v3, "Token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->s:Lcom/google/android/gms/auth/be/w;

    .line 76
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "CAN_UPGRADE_PLUS"

    const/16 v2, 0x13

    const-string v3, "GooglePlusUpgrade"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->t:Lcom/google/android/gms/auth/be/w;

    .line 82
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "NEEDS_CREDIT_CARD"

    const/16 v2, 0x14

    const-string v3, "CC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->u:Lcom/google/android/gms/auth/be/w;

    .line 85
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "FIRST_NAME"

    const/16 v2, 0x15

    const-string v3, "firstName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->v:Lcom/google/android/gms/auth/be/w;

    .line 86
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "LAST_NAME"

    const/16 v2, 0x16

    const-string v3, "lastName"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->w:Lcom/google/android/gms/auth/be/w;

    .line 95
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "ROP_TEXT"

    const/16 v2, 0x17

    const-string v3, "RopText"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->x:Lcom/google/android/gms/auth/be/w;

    .line 96
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "ROP_REVISION"

    const/16 v2, 0x18

    const-string v3, "RopRevision"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->y:Lcom/google/android/gms/auth/be/w;

    .line 101
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "SERVICE_HOSTED"

    const/16 v2, 0x19

    const-string v3, "HOSTED"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->z:Lcom/google/android/gms/auth/be/w;

    .line 106
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "CONSENT_DATA_BASE64"

    const/16 v2, 0x1a

    const-string v3, "ConsentDataBase64"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->A:Lcom/google/android/gms/auth/be/w;

    .line 111
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "SERVICE_GPLUS"

    const/16 v2, 0x1b

    const-string v3, "googleme"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->B:Lcom/google/android/gms/auth/be/w;

    .line 113
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "URL"

    const/16 v2, 0x1c

    const-string v3, "Url"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->C:Lcom/google/android/gms/auth/be/w;

    .line 118
    new-instance v0, Lcom/google/android/gms/auth/be/w;

    const-string v1, "SERVICE_ES_MOBILE"

    const/16 v2, 0x1d

    const-string v3, "esmobile"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/be/w;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/be/w;->D:Lcom/google/android/gms/auth/be/w;

    .line 9
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/google/android/gms/auth/be/w;

    sget-object v1, Lcom/google/android/gms/auth/be/w;->a:Lcom/google/android/gms/auth/be/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/auth/be/w;->b:Lcom/google/android/gms/auth/be/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/auth/be/w;->c:Lcom/google/android/gms/auth/be/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/auth/be/w;->d:Lcom/google/android/gms/auth/be/w;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/auth/be/w;->e:Lcom/google/android/gms/auth/be/w;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/auth/be/w;->f:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/auth/be/w;->g:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/auth/be/w;->h:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/auth/be/w;->i:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/auth/be/w;->j:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/auth/be/w;->k:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gms/auth/be/w;->l:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gms/auth/be/w;->m:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gms/auth/be/w;->n:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gms/auth/be/w;->o:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gms/auth/be/w;->p:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gms/auth/be/w;->q:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/gms/auth/be/w;->r:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/gms/auth/be/w;->s:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/gms/auth/be/w;->t:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/gms/auth/be/w;->u:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/gms/auth/be/w;->v:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/gms/auth/be/w;->w:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/gms/auth/be/w;->x:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/gms/auth/be/w;->y:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/google/android/gms/auth/be/w;->z:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/google/android/gms/auth/be/w;->A:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/google/android/gms/auth/be/w;->B:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/google/android/gms/auth/be/w;->C:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/google/android/gms/auth/be/w;->D:Lcom/google/android/gms/auth/be/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/auth/be/w;->F:[Lcom/google/android/gms/auth/be/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 124
    iput-object p3, p0, Lcom/google/android/gms/auth/be/w;->E:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/be/w;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/google/android/gms/auth/be/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/be/w;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/be/w;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/google/android/gms/auth/be/w;->F:[Lcom/google/android/gms/auth/be/w;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/be/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/be/w;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/auth/be/w;->E:Ljava/lang/String;

    return-object v0
.end method
