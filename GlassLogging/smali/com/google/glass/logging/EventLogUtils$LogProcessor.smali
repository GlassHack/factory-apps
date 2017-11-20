.class interface abstract Lcom/google/glass/logging/EventLogUtils$LogProcessor;
.super Ljava/lang/Object;
.source "EventLogUtils.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LogProcessor"
.end annotation


# virtual methods
.method public abstract getTag()I
.end method

.method public abstract process(Landroid/util/EventLog$Event;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/EventLog$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation
.end method
