.class Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final fromScrollViewItem:F

.field final items:Ljava/util/List;

.field final selectedItemView:Landroid/widget/TextView;

.field final selectedItemViewOriginalYPosition:F


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/TextView;F)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->items:Ljava/util/List;

    .line 98
    iput-object p2, p0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    .line 99
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 100
    :goto_0
    iput v0, p0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemViewOriginalYPosition:F

    .line 101
    iput p3, p0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->fromScrollViewItem:F

    .line 102
    return-void

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/widget/TextView;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method
