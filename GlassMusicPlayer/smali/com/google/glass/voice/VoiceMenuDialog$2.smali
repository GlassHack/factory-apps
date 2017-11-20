.class Lcom/google/glass/voice/VoiceMenuDialog$2;
.super Lcom/google/glass/widget/FastScrollOverlay;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$2;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/widget/FastScrollOverlay;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V

    return-void
.end method


# virtual methods
.method protected getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget v0, Lcom/google/glass/common/R$id;->tag_item_fast_scroll_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
