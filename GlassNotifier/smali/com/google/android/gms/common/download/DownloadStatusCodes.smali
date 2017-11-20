.class public Lcom/google/android/gms/common/download/DownloadStatusCodes;
.super Lcom/google/android/gms/common/api/CommonStatusCodes;


# static fields
.field public static final DONE:I = 0x0

.field public static final ERROR:I = 0xd

.field public static final IN_PROGRESS:I = 0x1b59

.field public static final NOT_ALLOWED:I = 0x1b5a

.field public static final PENDING:I = 0x1b58


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .locals 1
    .param p0, "statusCode"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "PENDING"

    goto :goto_0

    :pswitch_1
    const-string v0, "IN_PROGRESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "NOT_ALLOWED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b58
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
