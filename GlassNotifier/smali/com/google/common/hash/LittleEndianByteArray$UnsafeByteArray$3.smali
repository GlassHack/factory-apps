.class final Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$3;
.super Ljava/lang/Object;
.source "LittleEndianByteArray.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray;->getUnsafe()Lsun/misc/Unsafe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Lsun/misc/Unsafe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/common/hash/LittleEndianByteArray$UnsafeByteArray$3;->run()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method public run()Lsun/misc/Unsafe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const-class v1, Lsun/misc/Unsafe;

    .line 179
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<Lsun/misc/Unsafe;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 180
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 182
    .local v2, "x":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/misc/Unsafe;

    return-object v3

    .line 179
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "x":Ljava/lang/Object;
    :cond_1
    new-instance v3, Ljava/lang/NoSuchFieldError;

    const-string v4, "the Unsafe"

    invoke-direct {v3, v4}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v3
.end method
