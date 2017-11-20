.class public final Lcom/google/android/gms/fitness/data/DataType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/android/gms/fitness/data/j;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/DataType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/google/android/gms/fitness/data/DataType;->a:I

    .line 71
    iput-object p2, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    .line 72
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/fitness/data/DataType;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/util/f;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/fitness/data/DataType;-><init>(ILjava/lang/String;Ljava/util/List;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/data/Field;)I
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%s not a field of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    const-string v1, "com.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/google/android/gms/fitness/data/DataType;->a:I

    return v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    if-eq p0, p1, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/DataType;

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    const-string v0, "DataType{%s%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataType;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/DataType;->c:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/google/android/gms/fitness/data/j;->a(Lcom/google/android/gms/fitness/data/DataType;Landroid/os/Parcel;)V

    .line 141
    return-void
.end method
