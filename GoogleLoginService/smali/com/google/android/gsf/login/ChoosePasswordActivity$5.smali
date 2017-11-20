.class Lcom/google/android/gsf/login/ChoosePasswordActivity$5;
.super Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;
.source "ChoosePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ChoosePasswordActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/ChoosePasswordActivity$GaiaPasswordFilter;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onInvalidCharacter(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$1102(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z

    .line 239
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/gsf/login/ChoosePasswordActivity$5;->this$0:Lcom/google/android/gsf/login/ChoosePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/ChoosePasswordActivity;->access$1102(Lcom/google/android/gsf/login/ChoosePasswordActivity;Z)Z

    .line 234
    return-void
.end method
