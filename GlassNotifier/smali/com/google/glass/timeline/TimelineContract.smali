.class public final Lcom/google/glass/timeline/TimelineContract;
.super Ljava/lang/Object;
.source "TimelineContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineContract$PostDeleteIntent;,
        Lcom/google/glass/timeline/TimelineContract$PendingAction;,
        Lcom/google/glass/timeline/TimelineContract$Entity;,
        Lcom/google/glass/timeline/TimelineContract$Timeline;,
        Lcom/google/glass/timeline/TimelineContract$PostDeleteIntentColumns;,
        Lcom/google/glass/timeline/TimelineContract$PendingActionColumns;,
        Lcom/google/glass/timeline/TimelineContract$EntityColumns;,
        Lcom/google/glass/timeline/TimelineContract$TimelineColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.glass.sync.timeline"

.field public static final BASE_URI:Landroid/net/Uri;

.field public static final SOURCE_CHANGED_PATH_MISC:Ljava/lang/String; = "misc"

.field public static final SOURCE_CHANGED_URI:Landroid/net/Uri;

.field public static final TIMELINE_PROVIDER_READY_ACTION:Ljava/lang/String; = "com.google.glass.timeline.TIMELINE_PROVIDER_READY"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 25
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.sync.timeline"

    .line 26
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    .line 40
    sget-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    const-string v1, "source"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract;->SOURCE_CHANGED_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
