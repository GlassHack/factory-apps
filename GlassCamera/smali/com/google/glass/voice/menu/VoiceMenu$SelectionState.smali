.class Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;
.super Ljava/lang/Object;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/menu/VoiceMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectionState"
.end annotation


# instance fields
.field final fromScrollViewItem:F

.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final selectedItemView:Landroid/widget/TextView;

.field final selectedItemViewOriginalYPosition:F


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/TextView;F)V
    .locals 1
    .param p2, "selectedItemView"    # Landroid/widget/TextView;
    .param p3, "fromScrollViewItem"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;",
            "Landroid/widget/TextView;",
            "F)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
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
