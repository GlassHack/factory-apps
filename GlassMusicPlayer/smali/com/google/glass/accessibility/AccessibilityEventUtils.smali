.class public final Lcom/google/glass/accessibility/AccessibilityEventUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PARCELABLE_KEY_TIMELINEITEM_SPEAKABLE_TEXT:Ljava/lang/String; = "com.google.glass.timeline.ui.TimelineItemContainerView.TimelineItem#speakableText"

.field public static final PARCELABLE_KEY_TIMELINEITEM_SPEAKABLE_TYPE:Ljava/lang/String; = "com.google.glass.timeline.ui.TimelineItemContainerView.TimelineItem#speakableType"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static addToEventBundle(Landroid/view/accessibility/AccessibilityEvent;Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    if-nez p0, :cond_0

    move v0, v1

    .line 60
    :goto_0
    return v0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    move v0, v2

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    instance-of v3, v0, Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 54
    check-cast v0, Landroid/os/Bundle;

    .line 55
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move v0, v2

    .line 56
    goto :goto_0

    :cond_2
    move v0, v1

    .line 60
    goto :goto_0
.end method
