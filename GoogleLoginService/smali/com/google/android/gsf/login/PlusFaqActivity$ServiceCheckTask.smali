.class Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;
.super Landroid/os/AsyncTask;
.source "PlusFaqActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/PlusFaqActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mmAccountName:Ljava/lang/String;

.field private final mmIsCreatingAccount:Z

.field private final mmService:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gsf/login/PlusFaqActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/login/PlusFaqActivity;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "isCreatingAccount"    # Z
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "accountName"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->this$0:Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-boolean p2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmIsCreatingAccount:Z

    .line 46
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmService:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmAccountName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmIsCreatingAccount:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->this$0:Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-static {v0}, Lcom/google/android/gsf/login/PlusFaqActivity;->access$000(Lcom/google/android/gsf/login/PlusFaqActivity;)Lcom/google/android/gsf/loginservice/GLSHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmService:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/loginservice/GLSHelper;->blockingIsServiceForUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->this$0:Lcom/google/android/gsf/login/PlusFaqActivity;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/gsf/login/PlusFaqActivity;->mServiceCheck:Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmAccountName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmAccountName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    .local v0, "atIndex":I
    if-ltz v0, :cond_0

    .line 71
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->mmAccountName:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .end local v0    # "atIndex":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->this$0:Lcom/google/android/gsf/login/PlusFaqActivity;

    invoke-static {v2, v1}, Lcom/google/android/gsf/login/PlusFaqActivity;->access$100(Lcom/google/android/gsf/login/PlusFaqActivity;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/PlusFaqActivity$ServiceCheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
