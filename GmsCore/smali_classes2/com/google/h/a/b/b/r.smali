.class public final Lcom/google/h/a/b/b/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/h/a/b/a/c;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/h/a/b/b/r;->a:Ljava/util/EnumMap;

    .line 81
    return-void
.end method
