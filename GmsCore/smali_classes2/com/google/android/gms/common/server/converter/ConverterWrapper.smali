.class public Lcom/google/android/gms/common/server/converter/ConverterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/converter/a;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/gms/common/server/converter/StringToIntConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/gms/common/server/converter/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->CREATOR:Lcom/google/android/gms/common/server/converter/a;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->a:I

    .line 33
    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->b:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->a:I

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->b:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    .line 39
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/server/response/a;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 2

    .prologue
    .line 50
    instance-of v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    check-cast p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;-><init>(Lcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->a:I

    return v0
.end method

.method final b()Lcom/google/android/gms/common/server/converter/StringToIntConverter;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->b:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/common/server/response/a;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->b:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->b:Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->CREATOR:Lcom/google/android/gms/common/server/converter/a;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->CREATOR:Lcom/google/android/gms/common/server/converter/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/converter/a;->a(Lcom/google/android/gms/common/server/converter/ConverterWrapper;Landroid/os/Parcel;I)V

    .line 73
    return-void
.end method
