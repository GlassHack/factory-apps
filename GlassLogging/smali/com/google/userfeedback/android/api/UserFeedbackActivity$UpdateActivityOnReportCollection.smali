.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;
.super Landroid/os/AsyncTask;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/UserFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateActivityOnReportCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountSpinner:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field private mPreviewButton:Landroid/widget/Button;

.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "accountSpinner"    # Landroid/widget/Spinner;
    .param p4, "previewButton"    # Landroid/widget/Button;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mContext:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mAccountSpinner:Landroid/widget/Spinner;

    .line 88
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mPreviewButton:Landroid/widget/Button;

    .line 89
    return-void
.end method

.method private updatePreviewButton()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mPreviewButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    return-void
.end method

.method private updateSpinner()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 106
    iget-object v10, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mAccountSpinner:Landroid/widget/Spinner;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 109
    :try_start_0
    iget-object v10, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v10}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v10

    iget-object v10, v10, Lcom/google/userfeedback/android/api/UserFeedbackReport;->accounts:Ljava/util/List;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v3, "allGoogleAccounts":[Ljava/lang/String;
    :goto_0
    array-length v10, v3

    add-int/lit8 v10, v10, 0x1

    new-array v1, v10, [Ljava/lang/String;

    .line 115
    .local v1, "accounts":[Ljava/lang/String;
    iget-object v10, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mContext:Landroid/content/Context;

    sget v11, Lcom/google/userfeedback/android/api/R$string;->gf_anonymous:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v9

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "i":I
    const-string v4, ""

    .line 118
    .local v4, "defaultAccount":Ljava/lang/String;
    const/4 v5, 0x0

    .line 119
    .local v5, "defaultPosition":I
    iget-object v10, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v10}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedback;->getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getSelectedAccount()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, "selectedEmail":Ljava/lang/String;
    array-length v10, v3

    :goto_1
    if-ge v9, v10, :cond_1

    aget-object v0, v3, v9

    .line 121
    .local v0, "account":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    aput-object v0, v1, v7

    .line 122
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 123
    move-object v4, v8

    .line 124
    move v5, v7

    .line 120
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "accounts":[Ljava/lang/String;
    .end local v3    # "allGoogleAccounts":[Ljava/lang/String;
    .end local v4    # "defaultAccount":Ljava/lang/String;
    .end local v5    # "defaultPosition":I
    .end local v7    # "i":I
    .end local v8    # "selectedEmail":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 112
    .local v6, "e":Ljava/lang/NullPointerException;
    new-array v3, v9, [Ljava/lang/String;

    .restart local v3    # "allGoogleAccounts":[Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .restart local v1    # "accounts":[Ljava/lang/String;
    .restart local v4    # "defaultAccount":Ljava/lang/String;
    .restart local v5    # "defaultPosition":I
    .restart local v7    # "i":I
    .restart local v8    # "selectedEmail":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mContext:Landroid/content/Context;

    sget v10, Lcom/google/userfeedback/android/api/R$layout;->gf_userfeedback_account_spinner:I

    invoke-direct {v2, v9, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 129
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v9, 0x1090009

    invoke-virtual {v2, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 130
    iget-object v9, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    iget-object v9, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    iget-object v9, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v9}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v9

    iput-object v4, v9, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "arg"    # [Ljava/lang/Void;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->isReportReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$400(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Lcom/google/userfeedback/android/api/UserFeedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->blockOnReportConstruction()V

    .line 102
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->updateSpinner()V

    .line 144
    invoke-direct {p0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->updatePreviewButton()V

    .line 145
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mPreviewButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$UpdateActivityOnReportCollection;->mAccountSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 95
    return-void
.end method
