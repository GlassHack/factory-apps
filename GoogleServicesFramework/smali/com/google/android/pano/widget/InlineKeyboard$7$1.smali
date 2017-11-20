.class Lcom/google/android/pano/widget/InlineKeyboard$7$1;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/pano/widget/InlineKeyboard$7;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/pano/widget/InlineKeyboard$7;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/pano/widget/InlineKeyboard$7;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$7$1;->this$1:Lcom/google/android/pano/widget/InlineKeyboard$7;

    iput-object p2, p0, Lcom/google/android/pano/widget/InlineKeyboard$7$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$7$1;->this$1:Lcom/google/android/pano/widget/InlineKeyboard$7;

    iget-object v0, v0, Lcom/google/android/pano/widget/InlineKeyboard$7;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$100(Lcom/google/android/pano/widget/InlineKeyboard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$7$1;->this$1:Lcom/google/android/pano/widget/InlineKeyboard$7;

    iget-object v0, v0, Lcom/google/android/pano/widget/InlineKeyboard$7;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$000(Lcom/google/android/pano/widget/InlineKeyboard;)Lcom/google/android/pano/widget/InlineKeyboard$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/pano/widget/InlineKeyboard$Listener;->onBackspace()V

    .line 408
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$7$1;->val$v:Landroid/view/View;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 410
    :cond_0
    return-void
.end method
