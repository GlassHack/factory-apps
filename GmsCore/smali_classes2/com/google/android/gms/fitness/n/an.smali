.class final Lcom/google/android/gms/fitness/n/an;
.super Lcom/google/android/gms/fitness/n/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/ac;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/an;->a:Lcom/google/android/gms/fitness/n/ac;

    const/16 v0, 0xb

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/aq;-><init>(Lcom/google/android/gms/fitness/n/ac;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/gms/fitness/n/n;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    return-void
.end method
