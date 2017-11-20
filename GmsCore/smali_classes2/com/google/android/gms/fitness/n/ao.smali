.class final Lcom/google/android/gms/fitness/n/ao;
.super Lcom/google/android/gms/fitness/n/aq;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/ac;


# direct methods
.method constructor <init>(Lcom/google/android/gms/fitness/n/ac;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/ao;->a:Lcom/google/android/gms/fitness/n/ac;

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/aq;-><init>(Lcom/google/android/gms/fitness/n/ac;I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/android/gms/fitness/n/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    return-void
.end method
