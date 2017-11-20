.class final Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;
.super Ljava/lang/Object;
.source "EngFeedbackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EngFeedbackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FeedbackRequest"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public startId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/logging/EngFeedbackService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/logging/EngFeedbackService$1;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/glass/logging/EngFeedbackService$FeedbackRequest;-><init>()V

    return-void
.end method
