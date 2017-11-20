.class public abstract Lcom/google/glass/voice/menu/Requirement;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getError()Lcom/google/glass/app/GlassError;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSatisfied(ZZ)Z
.end method
