.class Lcom/google/android/gsf/login/UsernamePasswordActivity$1;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
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
    .line 185
    iput-object p1, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    invoke-direct {p0, p2}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 3
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 201
    const/16 v1, 0x30

    if-gt v1, p1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p1, :cond_2

    const/16 v1, 0x7a

    if-le p1, v1, :cond_0

    .line 205
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p1, :cond_3

    const/16 v1, 0x5a

    if-le p1, v1, :cond_0

    .line 207
    :cond_3
    const-string v1, "@_-+.\'"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInvalidCharacter(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$002(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 197
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gsf/login/UsernamePasswordActivity$1;->this$0:Lcom/google/android/gsf/login/UsernamePasswordActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/UsernamePasswordActivity;->access$002(Lcom/google/android/gsf/login/UsernamePasswordActivity;Z)Z

    .line 192
    return-void
.end method
