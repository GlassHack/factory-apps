.class Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/userfeedback/android/api/UserFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnUserChoiceInputChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method private constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/userfeedback/android/api/UserFeedbackActivity;
    .param p2, "x1"    # Lcom/google/userfeedback/android/api/UserFeedbackActivity$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$000(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$100(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackActivity$OnUserChoiceInputChangeListener;->this$0:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    .line 68
    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$200(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->access$300(Lcom/google/userfeedback/android/api/UserFeedbackActivity;ZZLjava/lang/String;)V

    .line 69
    return-void
.end method
