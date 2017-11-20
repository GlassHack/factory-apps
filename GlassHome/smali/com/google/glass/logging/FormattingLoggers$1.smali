.class final Lcom/google/glass/logging/FormattingLoggers$1;
.super Ljava/lang/ThreadLocal;
.source "FormattingLoggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/FormattingLoggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/google/glass/logging/FormattingLoggers$TimingData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/google/glass/logging/FormattingLoggers$TimingData;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/google/glass/logging/FormattingLoggers$TimingData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/logging/FormattingLoggers$TimingData;-><init>(Lcom/google/glass/logging/FormattingLoggers$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/glass/logging/FormattingLoggers$1;->initialValue()Lcom/google/glass/logging/FormattingLoggers$TimingData;

    move-result-object v0

    return-object v0
.end method
