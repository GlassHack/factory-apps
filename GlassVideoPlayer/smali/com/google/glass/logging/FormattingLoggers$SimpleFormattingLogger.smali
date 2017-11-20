.class final Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final tag:Ljava/lang/String;

.field final tagProperty:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    const-string v1, "null tag"

    invoke-static {p1, v1}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    .line 488
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x17

    if-gt v1, v2, :cond_0

    move v1, v6

    :goto_0
    const-string v2, "tagProperty is too long: [%s]"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v7

    invoke-static {v1, v2, v3}, Lcom/google/common/base/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 490
    iput-object p2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    .line 492
    const-string v1, "FormattingLoggers"

    const-string v2, "FormattingLoggers"

    const/4 v3, 0x0

    const-string v4, "System property for logging tag [%s]: [log.tag.%s]"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p1, v5, v7

    aput-object p2, v5, v6

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    return-void

    :cond_0
    move v1, v7

    .line 488
    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/logging/FormattingLoggers$1;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1, p2}, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 513
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method public final varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 518
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public final varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 542
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public final varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 547
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    return-void
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 523
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    return-void
.end method

.method public final varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 527
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public final isLoggable(I)Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/glass/logging/FormattingLoggers;->access$500(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 503
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    return-void
.end method

.method public final varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 508
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method public final varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 532
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public final varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 537
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tagProperty:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/logging/FormattingLoggers$SimpleFormattingLogger;->tag:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/logging/FormattingLoggers;->access$400(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    return-void
.end method
