.class public final Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PMNCreator"


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    .line 49
    return-void
.end method

.method static writeToParcel(Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "message"    # Lcom/google/protobuf/nano/MessageNano;
    .param p2, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 94
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 57
    .local v3, "data":[B
    const/4 v6, 0x0

    .line 61
    .local v6, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    const/4 v7, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-static {v1, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/google/protobuf/nano/MessageNano;

    .line 63
    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 64
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 65
    .local v5, "instance":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    move-object v6, v0

    .line 66
    invoke-static {v6, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_5

    .line 81
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "instance":Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 67
    :catch_0
    move-exception v4

    .line 68
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v7, "PMNCreator"

    const-string v8, "Exception trying to create proto from parcel"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 70
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "PMNCreator"

    const-string v8, "Exception trying to create proto from parcel"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v4

    .line 72
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "PMNCreator"

    const-string v8, "Exception trying to create proto from parcel"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "PMNCreator"

    const-string v8, "Exception trying to create proto from parcel"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v4

    .line 76
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v7, "PMNCreator"

    const-string v8, "Exception trying to create proto from parcel"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 78
    .local v4, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    const-string v7, "PMNCreator"

    const-string v8, "Exception trying to create proto from parcel"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;, "Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method
