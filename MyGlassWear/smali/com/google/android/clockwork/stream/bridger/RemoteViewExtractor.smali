.class public final Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;
.super Ljava/lang/Object;
.source "RemoteViewExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;
    }
.end annotation


# static fields
.field private static final FALLBACK_TITLE_MAX_LENGTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "RemoteViewExtractor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static extractRemoteViewText(Landroid/content/Context;Landroid/app/Notification;)Landroid/util/Pair;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Notification;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;

    invoke-direct {v2}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;-><init>()V

    .line 38
    .local v2, "extract":Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;
    const/4 v0, 0x0

    .line 39
    .local v0, "contentViewLocal":Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    .local v3, "parent":Landroid/widget/FrameLayout;
    :try_start_0
    iget-object v4, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4, p0, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-static {v0, v2}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;->extractViewText(Landroid/view/View;Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->toPair()Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "RemoteViewExtractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not inflate the view for notification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static extractViewGroupText(Landroid/view/ViewGroup;Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;)V
    .locals 3
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "extract"    # Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 59
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 60
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;->extractViewText(Landroid/view/View;Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method private static extractViewText(Landroid/view/View;Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "extract"    # Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;

    .prologue
    .line 65
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 66
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "view":Landroid/view/View;
    invoke-static {p0, p1}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;->extractViewGroupText(Landroid/view/ViewGroup;Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    invoke-static {p0}, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor;->isTextView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "extractedText":Ljava/lang/String;
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->title:Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    .line 72
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->title:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 75
    :cond_2
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->title:Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->text:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_3
    iget-object v1, p1, Lcom/google/android/clockwork/stream/bridger/RemoteViewExtractor$MutableStringPair;->text:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static isTextView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 86
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget.DateTimeView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTitleAppropriateLength(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
