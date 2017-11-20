.class Lcom/google/android/gsf/login/SuggestUsernameActivity$1;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "SuggestUsernameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/SuggestUsernameActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/SuggestUsernameActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;->this$0:Lcom/google/android/gsf/login/SuggestUsernameActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 108
    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/text/LoginFilter$UsernameFilterGeneric;->isAllowed(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvalidCharacter(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;->this$0:Lcom/google/android/gsf/login/SuggestUsernameActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->access$002(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)Z

    .line 104
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gsf/login/SuggestUsernameActivity$1;->this$0:Lcom/google/android/gsf/login/SuggestUsernameActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->access$002(Lcom/google/android/gsf/login/SuggestUsernameActivity;Z)Z

    .line 99
    return-void
.end method
