.class final Lcom/google/android/gms/auth/login/ax;
.super Landroid/text/LoginFilter$PasswordFilterGMail;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;)V
    .locals 1

    .prologue
    .line 289
    iput-object p1, p0, Lcom/google/android/gms/auth/login/ax;->a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/text/LoginFilter$PasswordFilterGMail;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onInvalidCharacter(C)V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ax;->a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->b(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;Z)Z

    .line 298
    return-void
.end method

.method public final onStart()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/gms/auth/login/ax;->a:Lcom/google/android/gms/auth/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/login/UsernamePasswordActivity;->b(Lcom/google/android/gms/auth/login/UsernamePasswordActivity;Z)Z

    .line 293
    return-void
.end method
