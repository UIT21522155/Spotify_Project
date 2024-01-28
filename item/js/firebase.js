import { initializeApp } from "https://www.gstatic.com/firebasejs/10.7.2/firebase-app.js";
import {
  getStorage,
  ref,
  getDownloadURL,
} from "https://www.gstatic.com/firebasejs/10.7.2/firebase-storage.js";
const firebaseConfig = {
  apiKey: "AIzaSyAxNzp6ZIoPmA531pPMGMrixCIc-Eti7Sg",
  authDomain: "project-1d15c.firebaseapp.com",
  projectId: "project-1d15c",
  storageBucket: "project-1d15c.appspot.com",
  messagingSenderId: "582758612889",
  appId: "1:582758612889:web:db739c8e80553846da5d08",
  measurementId: "G-5E5YGT17WD",
};

//Initialize Firebase
const app = initializeApp(firebaseConfig);
const storage = getStorage(app);
