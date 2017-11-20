.class Lcom/google/android/pano/widget/InlineKeyboard$9;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/InlineKeyboard;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/pano/widget/InlineKeyboard;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/InlineKeyboard;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$9;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 446
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$9;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$800(Lcom/google/android/pano/widget/InlineKeyboard;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 447
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$9;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$500(Lcom/google/android/pano/widget/InlineKeyboard;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$9;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0, p2}, Lcom/google/android/pano/widget/InlineKeyboard;->access$802(Lcom/google/android/pano/widget/InlineKeyboard;Z)Z

    .line 458
    return-void

    .line 449
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$9;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$600(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->getKeyAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$9;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$700(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->getKeyAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
