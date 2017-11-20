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

.field public static final TIMELINE_PROVIDER_READY_ACTION:Ljava/lang/String; = "com.google.glass.timeline.TIMELINE_PROVIDER_READY"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 26
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.glass.sync.timeline"

    .line 27
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineContract;->BASE_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    return-void
.end method
