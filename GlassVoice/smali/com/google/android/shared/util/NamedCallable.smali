.class public abstract Lcom/google/android/shared/util/NamedCallable;
.super Ljava/lang/Object;
.source "NamedCallable.java"

# interfaces
.implements Lcom/google/android/shared/util/TaggedTask;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/shared/util/TaggedTask;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mParentName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mPermissions:I

.field private final mTaskName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "parentName"    # Ljava/lang/String;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "permissions"    # [I

    .prologue
    .line 55
    .local p0, "this":Lcom/google/android/shared/util/NamedCallable;, "Lcom/google/android/shared/util/NamedCallable<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/shared/util/NamedCallable;->mParentName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/google/android/shared/util/NamedCallable;->mTaskName:Ljava/lang/String;

    .line 58
    invoke-static {p3}, Lcom/google/android/shared/util/Util;->combineTaggedTaskPermissions([I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/util/NamedCallable;->mPermissions:I

    .line 59
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "permissions"    # [I

    .prologue
    .line 47
    .local p0, "this":Lcom/google/android/shared/util/NamedCallable;, "Lcom/google/android/shared/util/NamedCallable<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/shared/util/NamedCallable;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 48
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 1
    .param p1, "permissions"    # [I

    .prologue
    .local p0, "this":Lcom/google/android/shared/util/NamedCallable;, "Lcom/google/android/shared/util/NamedCallable<TV;>;"
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/shared/util/NamedCallable;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getPermissions()I
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/google/android/shared/util/NamedCallable;, "Lcom/google/android/shared/util/NamedCallable<TV;>;"
    iget v0, p0, Lcom/google/android/shared/util/NamedCallable;->mPermissions:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    .local p0, "this":Lcom/google/android/shared/util/NamedCallable;, "Lcom/google/android/shared/util/NamedCallable<TV;>;"
    iget-object v0, p0, Lcom/google/android/shared/util/NamedCallable;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/shared/util/NamedCallable;->mParentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/shared/util/NamedCallable;->mTaskName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/Util;->getTaskName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/shared/util/NamedCallable;->mName:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/android/shared/util/NamedCallable;->mName:Ljava/lang/String;

    return-object v0
.end method
