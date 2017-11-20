.class public final Lcom/google/android/gms/auth/authzen/transaction/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/m/b/a/a/p;Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p1, Lcom/google/m/b/a/a/p;->a:Lcom/google/protobuf/a/a;

    .line 262
    :cond_0
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/auth/authzen/transaction/TransactionReplyService;->a(Ljava/lang/String;[BLcom/google/protobuf/a/a;)Landroid/content/Intent;

    move-result-object v0

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 264
    return-void
.end method
