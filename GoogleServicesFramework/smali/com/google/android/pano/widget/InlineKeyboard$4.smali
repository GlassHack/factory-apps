.class Lcom/google/android/pano/widget/InlineKeyboard$4;
.super Ljava/lang/Object;
.source "InlineKeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 359
    iput-object p1, p0, Lcom/google/android/pano/widget/InlineKeyboard$4;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/pano/widget/InlineKeyboard$4;->this$0:Lcom/google/android/pano/widget/InlineKeyboard;

    invoke-static {v0}, Lcom/google/android/pano/widget/InlineKeyboard;->access$400(Lcom/google/android/pano/widget/InlineKeyboard;)V

    .line 364
    return-void
.end method
