.class public Lcom/google/android/gms/wearable/internal/MessageEventParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/wearable/r;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:[B

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/android/gms/wearable/internal/ao;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/ao;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->a:I

    .line 48
    iput p2, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->b:I

    .line 49
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->c:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->d:[B

    .line 51
    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->e:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLjava/lang/String;)V
    .locals 6

    .prologue
    .line 55
    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;-><init>(IILjava/lang/String;[BLjava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[B
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->d:[B

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->b:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MessageEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->d:[B

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/MessageEventParcelable;->d:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/google/android/gms/wearable/internal/ao;->a(Lcom/google/android/gms/wearable/internal/MessageEventParcelable;Landroid/os/Parcel;)V

    .line 65
    return-void
.end method
