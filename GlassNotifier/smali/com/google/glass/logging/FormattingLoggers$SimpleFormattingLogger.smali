.class final Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;
.super Ljava/lang/Object;
.source "FormattingLoggers.java"

# interfaces
.implements Lcom/google/glass/logging/FormattingLogger;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/FormattingLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleFormattingLogger"
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;

.field final tagProperty:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "tagProperty"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    const-string v1, "null tag"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    .line 486
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    move v1, v6

    :goto_0
    const-string v2, "tagProperty is too long: [%s]"

    invoke-static {v1, v2, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 488
    iput-object p2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 490
    const-string v1, "FormattingLoggers"

    const-string v2, "FormattingLoggers"

    const/4 v3, 0x0

    const-string v4, "System property for logging tag [%s]: [log.tag.%s]"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    return-void

    :cond_0
    move v1, v7

    .line 486
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/glass/logging/FormattingLoggers$1;

    .prologue
    .line 471
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 511
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 516
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 540
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 545
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 521
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 525
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    return-void
.end method

.method public isLoggable(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/glass/logging/FormattingLoggers;->access$500(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 501
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 506
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 530
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 535
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    return-void
.end method
