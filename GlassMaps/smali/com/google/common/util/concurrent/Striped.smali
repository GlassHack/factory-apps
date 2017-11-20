.class public abstract Lcom/google/common/util/concurrent/Striped;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/google/common/util/concurrent/v;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/v;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/Striped;->a:Lcom/google/common/base/aw;

    return-void
.end method
