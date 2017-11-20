.class public abstract Lcom/google/c/a/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/c/a/bc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/google/c/a/bd;

    invoke-direct {v0}, Lcom/google/c/a/bd;-><init>()V

    sput-object v0, Lcom/google/c/a/bc;->a:Lcom/google/c/a/bc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/c/a/bc;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/c/a/bc;->a:Lcom/google/c/a/bc;

    return-object v0
.end method


# virtual methods
.method public abstract a()J
.end method
