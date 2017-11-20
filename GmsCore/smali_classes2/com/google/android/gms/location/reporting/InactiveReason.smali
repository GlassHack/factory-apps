.class public Lcom/google/android/gms/location/reporting/InactiveReason;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/e;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/gms/location/reporting/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/InactiveReason;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->a:I

    .line 151
    iput p2, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    .line 152
    iput-object p3, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->c:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/location/reporting/InactiveReason;-><init>(IILjava/lang/String;)V

    .line 163
    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Z
    .locals 3

    .prologue
    .line 132
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/reporting/InactiveReason;

    .line 133
    iget v0, v0, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->c:Ljava/lang/String;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/google/android/gms/location/reporting/InactiveReason;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 195
    instance-of v0, p1, Lcom/google/android/gms/location/reporting/InactiveReason;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    check-cast p1, Lcom/google/android/gms/location/reporting/InactiveReason;

    iget v1, p1, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InactiveReason{mVersionCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/location/reporting/InactiveReason;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/google/android/gms/location/reporting/InactiveReason;->CREATOR:Lcom/google/android/gms/location/reporting/e;

    invoke-static {p0, p1}, Lcom/google/android/gms/location/reporting/e;->a(Lcom/google/android/gms/location/reporting/InactiveReason;Landroid/os/Parcel;)V

    .line 220
    return-void
.end method
