.class final Lcom/google/android/gms/auth/login/aw;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;)V
    .locals 1

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/gms/auth/login/aw;->a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final isAllowed(C)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 265
    const/16 v1, 0x30

    if-gt v1, p1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 269
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 271
    :cond_3
    const-string v1, "@_-+.\'"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 273
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInvalidCharacter(C)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/auth/login/aw;->a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;Z)Z

    .line 261
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gms/auth/login/aw;->a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->a(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;Z)Z

    .line 256
    return-void
.end method
