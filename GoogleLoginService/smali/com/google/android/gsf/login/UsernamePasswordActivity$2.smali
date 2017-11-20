.class Lcom/google/android/gsf/login/UsernamePasswordActivity$2;
.super Landroid/text/LoginFilter$PasswordFilterGMail;
.source "UsernamePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/UsernamePasswordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$PasswordFilterGMail;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$102(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$2;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$102(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 229
    return-void
.end method
