.class public Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/l;


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/android/gms/common/server/l;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->CREATOR:Lcom/google/android/gms/common/server/l;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->a:I

    .line 39
    iput-object p2, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->b:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->c:I

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->a:I

    .line 45
    iput-object p1, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->b:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->c:I

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1}, Lcom/google/android/gms/common/server/l;->a(Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;Landroid/os/Parcel;)V

    .line 52
    return-void
.end method
