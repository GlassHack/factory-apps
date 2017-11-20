.class public final Lcom/google/android/youtube/core/model/SocialSettings$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

.field public final b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;Z)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/android/youtube/core/model/SocialSettings$Action;->a:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    .line 77
    iput-boolean p2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Action;->b:Z

    .line 78
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    instance-of v1, p1, Lcom/google/android/youtube/core/model/SocialSettings$Action;

    if-eqz v1, :cond_0

    .line 103
    check-cast p1, Lcom/google/android/youtube/core/model/SocialSettings$Action;

    .line 104
    iget-object v1, p1, Lcom/google/android/youtube/core/model/SocialSettings$Action;->a:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Action;->a:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lcom/google/android/youtube/core/model/SocialSettings$Action;->b:Z

    iget-boolean v2, p0, Lcom/google/android/youtube/core/model/SocialSettings$Action;->b:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SocialSettings$Action;->a:Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/SocialSettings$Action$ActionType;->ordinal()I

    move-result v0

    return v0
.end method
