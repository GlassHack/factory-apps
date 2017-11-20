.class Lcom/google/android/pano/widget/InlineKeyboard$8;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 425
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$8;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 429
    const/16 v1, 0x16

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$8;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$500(Lcom/google/android/pano/widget/InlineKeyboard;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 439
    :cond_0
    :goto_0
    return v0

    .line 434
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$8;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$600(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->getKeyAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/pano/widget/InlineKeyboard$8;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v1}, Lcom/google/android/pano/widget/InlineKeyboard;->access$700(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/pano/widget/InlineKeyboard$NavLinearLayout;->getKeyAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
