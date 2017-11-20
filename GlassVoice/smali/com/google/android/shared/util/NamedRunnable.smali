.class public abstract Lcom/google/android/shared/util/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Lcom/google/android/shared/util/TaggedTask;
.implements Ljava/lang/Runnable;


# instance fields
.field private final mClassToName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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
.method varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;[I)V
    .locals 1
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "permissions"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mParentName:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/google/android/shared/util/NamedRunnable;->mClassToName:Ljava/lang/Class;

    .line 68
    iput-object p2, p0, Lcom/google/android/shared/util/NamedRunnable;->mTaskName:Ljava/lang/String;

    .line 69
    invoke-static {p3}, Lcom/google/android/shared/util/Util;->combineTaggedTaskPermissions([I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mPermissions:I

    .line 70
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "parentName"    # Ljava/lang/String;
    .param p2, "taskName"    # Ljava/lang/String;
    .param p3, "permissions"    # [I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/shared/util/NamedRunnable;->mParentName:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mClassToName:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lcom/google/android/shared/util/NamedRunnable;->mTaskName:Ljava/lang/String;

    .line 59
    invoke-static {p3}, Lcom/google/android/shared/util/Util;->combineTaggedTaskPermissions([I)I

    move-result v0

    iput v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mPermissions:I

    .line 60
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "permissions"    # [I

    .prologue
    .line 47
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 48
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 2
    .param p1, "permissions"    # [I

    .prologue
    const/4 v1, 0x0

    .line 38
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/shared/util/NamedRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getPermissions()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mPermissions:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mClassToName:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/shared/util/NamedRunnable;->mParentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/shared/util/NamedRunnable;->mTaskName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/Util;->getTaskName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mName:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/shared/util/NamedRunnable;->mName:Ljava/lang/String;

    return-object v0
.end method
