.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Landroid/widget/FrameLayout;
.source "ExpandableNotificationRow.java"


# instance fields
.field private mExpandable:Z

.field private mRowHeight:I

.field private mUserExpanded:Z

.field private mUserLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method


# virtual methods
.method public isExpandable()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return v0
.end method

.method public setExpandable(Z)V
    .locals 0
    .param p1, "expandable"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 52
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 72
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 77
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void

    .line 75
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setRowHeight(I)V
    .locals 0
    .param p1, "rowHeight"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowHeight:I

    .line 44
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 0
    .param p1, "userExpanded"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 60
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 0
    .param p1, "userLocked"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 68
    return-void
.end method
