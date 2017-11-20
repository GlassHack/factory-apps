.class Lcom/google/glass/sync/nowtown/NotificationService$Entry;
.super Ljava/lang/Object;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/nowtown/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final builder:Lcom/google/glass/sync/nowtown/NotificationBuilder;

.field lastBundleCoverStatus:I

.field lastModifiedTime:J


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/NotificationBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/glass/sync/nowtown/NotificationBuilder;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/NotificationService$Entry;->builder:Lcom/google/glass/sync/nowtown/NotificationBuilder;

    .line 48
    return-void
.end method
