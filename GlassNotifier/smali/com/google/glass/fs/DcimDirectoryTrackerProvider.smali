.class public final Lcom/google/glass/fs/DcimDirectoryTrackerProvider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "DcimDirectoryTrackerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/fs/DirectoryTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/fs/DcimDirectoryTrackerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;

    invoke-direct {v0}, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;->INSTANCE:Lcom/google/glass/fs/DcimDirectoryTrackerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 17
    new-instance v0, Lcom/google/glass/fs/DcimDirectoryTrackerProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/fs/DcimDirectoryTrackerProvider$1;-><init>(Lcom/google/glass/fs/DcimDirectoryTrackerProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;->init(Lcom/google/common/base/Supplier;)V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/google/glass/fs/DcimDirectoryTrackerProvider;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/fs/DcimDirectoryTrackerProvider;->INSTANCE:Lcom/google/glass/fs/DcimDirectoryTrackerProvider;

    return-object v0
.end method
