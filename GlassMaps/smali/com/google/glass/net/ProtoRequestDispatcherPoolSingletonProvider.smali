.class public final Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    invoke-direct {v0}, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;-><init>()V

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->INSTANCE:Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;->INSTANCE:Lcom/google/glass/net/ProtoRequestDispatcherPoolSingletonProvider;

    return-object v0
.end method
