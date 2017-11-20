.class public Lcom/google/android/shared/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/shared/util/StateMachine$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCurrentState:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDebug:Z

.field private final mLegalTransitions:Lcom/google/common/collect/HashMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;"
        }
    .end annotation
.end field

.field private final mStrictMode:Z

.field private final mTag:Ljava/lang/String;

.field private final mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;Lcom/google/common/collect/HashMultimap;Z)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "strictMode"    # Z
    .param p4, "threadCheck"    # Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;
    .param p6, "debug"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z",
            "Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;",
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    .local p2, "startState":Ljava/lang/Enum;, "TT;"
    .local p5, "legalTransitions":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TT;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p5, p0, Lcom/google/android/shared/util/StateMachine;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    .line 50
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mTag:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lcom/google/android/shared/util/StateMachine;->mStrictMode:Z

    .line 52
    iput-object p4, p0, Lcom/google/android/shared/util/StateMachine;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 53
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    iput-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    .line 54
    iput-boolean p6, p0, Lcom/google/android/shared/util/StateMachine;->mDebug:Z

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Enum;ZZLcom/google/common/collect/HashMultimap;Z)V
    .locals 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p3, "strictMode"    # Z
    .param p4, "oneThreadOnly"    # Z
    .param p6, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;ZZ",
            "Lcom/google/common/collect/HashMultimap",
            "<TT;TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    .local p2, "startState":Ljava/lang/Enum;, "TT;"
    .local p5, "legalTransitions":Lcom/google/common/collect/HashMultimap;, "Lcom/google/common/collect/HashMultimap<TT;TT;>;"
    if-eqz p4, :cond_1

    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createSameThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/shared/util/StateMachine;-><init>(Ljava/lang/String;Ljava/lang/Enum;ZLcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;Lcom/google/common/collect/HashMultimap;Z)V

    .line 43
    iget-boolean v0, p0, Lcom/google/android/shared/util/StateMachine;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->createAnyThreadCheck()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    move-result-object v4

    goto :goto_0
.end method

.method private error(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 95
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/shared/util/StateMachine;->mStrictMode:Z

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/shared/util/StateMachine;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mTag:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/google/android/shared/util/StateMachine$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "state":Ljava/lang/Enum;, "TT;"
    new-instance v0, Lcom/google/android/shared/util/StateMachine$Builder;

    invoke-direct {v0, p0, p1}, Lcom/google/android/shared/util/StateMachine$Builder;-><init>(Ljava/lang/String;Ljava/lang/Enum;)V

    return-object v0
.end method


# virtual methods
.method public checkIn(Ljava/lang/Enum;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    .local p1, "state":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 89
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    if-eq v0, p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/util/StateMachine;->error(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public isIn(Ljava/lang/Enum;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    .local p1, "state":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 73
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(Ljava/lang/Enum;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    .local p1, "newState":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 59
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mLegalTransitions:Lcom/google/common/collect/HashMultimap;

    iget-object v1, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal transation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/shared/util/StateMachine;->error(Ljava/lang/String;)V

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/shared/util/StateMachine;->mDebug:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 65
    :cond_2
    iput-object p1, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    .line 66
    return-void
.end method

.method public notIn(Ljava/lang/Enum;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    .local p1, "state":Ljava/lang/Enum;, "TT;"
    iget-object v0, p0, Lcom/google/android/shared/util/StateMachine;->mThreadCheck:Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    invoke-virtual {v0}, Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;->check()Lcom/google/android/shared/util/ExtraPreconditions$ThreadCheck;

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    .local p0, "this":Lcom/google/android/shared/util/StateMachine;, "Lcom/google/android/shared/util/StateMachine<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/shared/util/StateMachine;->mCurrentState:Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
