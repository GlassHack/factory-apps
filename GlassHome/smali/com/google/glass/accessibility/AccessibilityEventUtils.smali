.class public final Lcom/google/glass/accessibility/AccessibilityEventUtils;
.super Ljava/lang/Object;
.source "AccessibilityEventUtils.java"


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
    .locals 5
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v1

    .line 48
    .local v1, "parcel":Landroid/os/Parcelable;
    if-nez v1, :cond_2

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    move v2, v3

    .line 52
    goto :goto_0

    .line 53
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_2
    instance-of v4, v1, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 54
    check-cast v0, Landroid/os/Bundle;

    .line 55
    .restart local v0    # "b":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move v2, v3

    .line 56
    goto :goto_0
.end method
