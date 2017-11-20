.class public interface abstract Lcom/google/android/clockwork/stream/StreamFilterer;
.super Ljava/lang/Object;
.source "StreamFilterer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;
    }
.end annotation


# static fields
.field public static final FILTER_NO:I = 0x0

.field public static final FILTER_YES_EMPTY_NOTIFICATION:I = 0x1

.field public static final FILTER_YES_HOME_FOREGROUND_SERVICE:I = 0x4

.field public static final FILTER_YES_LEGACY_GMAIL_UNDO:I = 0x5

.field public static final FILTER_YES_MUTED:I = 0x2

.field public static final FILTER_YES_NON_RETAIL:I = 0x3


# virtual methods
.method public abstract getFilteredStatus(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)I
.end method

.method public abstract setChangedListener(Lcom/google/android/clockwork/stream/StreamFilterer$ChangedListener;)V
.end method
