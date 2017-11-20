.class final Lcom/google/glass/time/ClockProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lcom/google/glass/time/Clock;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/time/ClockProvider$SingletonHolder;->access$100()Lcom/google/glass/time/ClockImpl;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/glass/time/ClockProvider$1;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    return-object v0
.end method
