.class final Lcom/google/android/gms/recovery/c;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/recovery/AccountRecoveryActivity;)V
    .locals 1

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/gms/recovery/c;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final isAllowed(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 333
    const/16 v1, 0x30

    if-gt v1, p1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 335
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 337
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 339
    :cond_3
    const-string v1, "@_-+.\'"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInvalidCharacter(C)V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/gms/recovery/c;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Z)Z

    .line 329
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/gms/recovery/c;->a:Lcom/google/android/gms/recovery/AccountRecoveryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/recovery/AccountRecoveryActivity;->b(Lcom/google/android/gms/recovery/AccountRecoveryActivity;Z)Z

    .line 324
    return-void
.end method
