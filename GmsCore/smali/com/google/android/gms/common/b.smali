.class public final Lcom/google/android/gms/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/b;


# instance fields
.field private final b:Landroid/app/PendingIntent;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lcom/google/android/gms/common/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/b;-><init>(ILandroid/app/PendingIntent;)V

    sput-object v0, Lcom/google/android/gms/common/b;->a:Lcom/google/android/gms/common/b;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/google/android/gms/common/b;->c:I

    .line 192
    iput-object p2, p0, Lcom/google/android/gms/common/b;->b:Landroid/app/PendingIntent;

    .line 193
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/gms/common/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/b;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    move-object v0, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/android/gms/common/b;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/b;->b:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/android/gms/common/b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/google/android/gms/common/b;->c:I

    return v0
.end method

.method public final d()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/gms/common/b;->b:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 300
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v1

    const-string v2, "statusCode"

    iget v0, p0, Lcom/google/android/gms/common/b;->c:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "unknown status code "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/gms/common/b;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "resolution"

    iget-object v2, p0, Lcom/google/android/gms/common/b;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string v0, "SERVICE_MISSING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :pswitch_4
    const-string v0, "SERVICE_DISABLED"

    goto :goto_0

    :pswitch_5
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_0

    :pswitch_6
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_0

    :pswitch_7
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_0

    :pswitch_8
    const-string v0, "NETWORK_ERROR"

    goto :goto_0

    :pswitch_9
    const-string v0, "INTERNAL_ERROR"

    goto :goto_0

    :pswitch_a
    const-string v0, "SERVICE_INVALID"

    goto :goto_0

    :pswitch_b
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_0

    :pswitch_c
    const-string v0, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :pswitch_d
    const-string v0, "CANCELED"

    goto :goto_0

    :pswitch_e
    const-string v0, "TIMEOUT"

    goto :goto_0

    :pswitch_f
    const-string v0, "INTERRUPTED"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
